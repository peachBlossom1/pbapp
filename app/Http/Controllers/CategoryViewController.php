<?php
namespace App\Http\Controllers;

use Illuminate\Http\Request;
use AvoRed\Framework\Repository\Product;
use DB;

class CategoryViewController extends Controller
{
    /**
     * AvoRed Attribute Repository
     *
     * @var \AvoRed\Framework\Repository\Product
     */
    protected $productRepository;

    public function __construct(Product $repository)
    {
        parent::__construct();
        $this->productRepository   = $repository;
    }

    /**
     *
     *
     * @param Request $request
     * @param $slug
     * @return \Illuminate\Http\Response
     *
     */
    public function view(Request $request, $slug)
    {
        $productsOnCategoryPage = 10; //Configuration::getConfiguration('avored_catalog_no_of_product_category_page');

        $category = $this->productRepository->findCategoryBySlug($slug);

        $collections = $this->productRepository->model()->getCollection()
            ->addCategoryFilter($category->id);

        $properties = DB::table('properties')->get();
        $props = Array();
        $i = 0;
        foreach ($properties as $property) {
            $props[$i]['id'] = $property->id;
            $props[$i]['name'] = $property->name;
            $opts = DB::table('property_dropdown_options')->where('property_id',$property->id)->get();
            $j = 0;
            foreach ($opts as $opt) {
                $props[$i]['options'][$j]['id'] = $opt->id;
                $props[$i]['options'][$j]['text'] = $opt->display_text;
                $j++;
            }
            $i++;
        }

        foreach ($request->except(['page']) as $attributeIdentifier => $value) {
            $attribute = $this->productRepository->attributeModel()->where('identifier', '=', $attributeIdentifier)->first();

            $collections->addAttributeFilter($attribute->id, $value);
        }

        $categoryProducts = $collections->paginateCollection($productsOnCategoryPage);

        return view('catalog.category.view')
            ->with('category', $category)
            ->with('params', $request->all())
            ->with('products', $categoryProducts)
            ->with('properties', $props);

    }

    public function test(Request $request){

        return response()->json([$request->checkedboxes]);
    }
}
