<div class="panel">
    <div class="panel-body">
        @if(($category->children->count()) > 0)
            <h6>Sub Categories</h6>
            <ul class="list-group">
                @foreach($category->children as $subCategory)
                    <li class="list-group-item">
                        <a href="{{ route('category.view', $subCategory->slug) }}">{{ $subCategory->name }}</a>
                    </li>
                @endforeach
            </ul>
        @endif
        <h6>See tailored products for your need.</h6>
        <hr/>
        <?php $properties = $category->getPropertyFilters(); ?>
        @foreach($properties as $property)
            <h6>{{ $property->name }}</h6>
            <ul class="list-group">
                @foreach($property->propertyDropdownOptions as $option)
                    <li class="list-group-item">
                        <input id="variation-{{ $option->id }}"
                               type="checkbox"

                               class="category-variation-checkbox"
                               @if(in_array($property->identifier, array_keys($params)) && in_array($option->id, array_values($params)))
                               {{ "checked" }}
                               <?php
                               $queryParams = $params;
                               unset($queryParams[$property->identifier])
                               ?>
                               data-checked-url="{{ route('category.view',
                                                                ['slug' => $category->slug,$property->identifier => $option->id] + $queryParams) }}"
                               data-unchecked-url="{{ route('category.view',
                                                                ['slug' => $category->slug] + $queryParams) }}"

                               @else

                               data-checked-url="{{ route('category.view',
                                                                    ['slug' => $category->slug,$property->identifier => $option->id] + $params) }}"
                               data-unchecked-url="{{ route('category.view',
                                                                    ['slug' => $category->slug] + $params) }}"

                               @endif
                               name="{{ $property->identifier }}" value="{{ $option->id }}">
                        <label for="variation-{{ $option->id }}">
                            {{ $option->display_text }}
                        </label>
                    </li>
                @endforeach

            </ul>
        @endforeach

        <?php
        $attributes = $category->getFilters();
        ?>
        @foreach($attributes as $attribute)
            <h6>{{ $attribute->name }}</h6>
            <ul class="list-group">
                @foreach($attribute->attributeDropdownOptions as $option)
                    <li class="list-group-item">
                        <input id="variation-{{ $option->id }}"
                               type="checkbox"

                               class="category-variation-checkbox"
                               @if(in_array($attribute->identifier, array_keys($params)) && in_array($option->id, array_values($params)))
                               {{ "checked" }}
                               <?php
                               $queryParams = $params;
                               unset($queryParams[$attribute->identifier])
                               ?>
                               data-checked-url="{{ route('category.view',
                                                                ['slug' => $category->slug,$attribute->identifier => $option->id] + $queryParams) }}"
                               data-unchecked-url="{{ route('category.view',
                                                                ['slug' => $category->slug] + $queryParams) }}"

                               @else

                               data-checked-url="{{ route('category.view',
                                                                    ['slug' => $category->slug,$attribute->identifier => $option->id] + $params) }}"
                               data-unchecked-url="{{ route('category.view',
                                                                    ['slug' => $category->slug] + $params) }}"

                               @endif
                               name="{{ $attribute->identifier }}" value="{{ $option->id }}">
                        <label for="variation-{{ $option->id }}">
                            {{ $option->display_text }}
                        </label>
                    </li>
                @endforeach

            </ul>
        @endforeach

    </div>
</div>
@push('scripts')

<!-- <script type="text/javascript" src="https://code.$.com/jquery-3.3.1.min.js"></script> -->

<script>
    $(document).ready(function () {
        $(document).on('change', '.category-variation-checkbox', function (e) {
          var url;
            if($(this).is(':checked')){
              url = $(this).attr('data-checked-url');
            }
            else{
              url = $(this).attr('data-unchecked-url-url');
            }
            $(location).attr('href', url)
        });
});
</script>
@endpush