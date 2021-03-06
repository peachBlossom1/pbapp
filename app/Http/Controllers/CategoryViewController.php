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

        

        foreach ($request->except(['page']) as $attributeIdentifier => $value) {
            //print_r($request->except(['page']));
            $attribute = $this->productRepository->PropertyModel()->where('identifier', '=', $attributeIdentifier)->first();
            // print_r($attribute->id);
            // die;

            $collections->addPropertyFilter($attribute->id, $value);
        }

        $categoryProducts = $collections->paginateCollection($productsOnCategoryPage);
        return view('catalog.category.view')
            ->with('category', $category)
            ->with('params', $request->all())
            ->with('products', $categoryProducts);

    }
    
}
