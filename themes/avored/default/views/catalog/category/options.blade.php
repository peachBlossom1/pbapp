<div class="panel">
    <div class="panel-body">
        <h6>Filter By Product Attributes</h6>
        <hr/>

        <h4>Properties</h4>
        <?php $count = count($properties); ?>
        @for ($i = 0; $i < $count; $i++)
        <h5>{{ $properties[$i]['name'] }}</h5>
        <ul class="list-group">
              @for($j=0; $j < 3; $j++)
                  <li class="list-group-item">
                      <input id="variation-{{ $properties[$i]['options'][$j]['id'] }}"
                             type="checkbox"

                             class="category-variation-checkbox"
                             value="{{ $properties[$i]['options'][$j]['id'] }}">
                      <label for="variation-{{ $properties[$i]['options'][$j]['id'] }}">
                          {{ $properties[$i]['options'][$j]['text'] }}
                      </label>
                  </li>
              @endfor

          </ul>
          @endfor
        @if(($category->children->count()) > 0)
            <h4>Sub Categories</h4>
            <ul class="list-group">
                @foreach($category->children as $subCategory)
                    <li class="list-group-item">
                        <a href="{{ route('category.view', $subCategory->slug) }}">{{ $subCategory->name }}</a>
                    </li>
                @endforeach
            </ul>
        @endif
        <?php
        $attributes = $category->getFilters();
        ?>
        @foreach($attributes as $attribute)
            <h4>{{ $attribute->name }}</h4>
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
<script type="text/javascript" src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
@push('scripts')
<script>
    jQuery(document).ready(function () {
        jQuery(document).on('change', '.category-variation-checkbox', function (e) {
            e.preventDefault();
            alert('hi');
            // AJAX START - for getting SO IDS
            // AJAX START - for getting SO IDS
           $.ajaxSetup({
            headers: {
                'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
            },
              url: '/test',
              type: 'POST',
              cache: false,
              contentType: 'application/json; charset=utf-8',
              
         });
          $.ajax({
            data: data,
          })
          .done(function(result){
            $.each( result, function( key, value ) {
            unit_rate = value['unit_rate'];
            $('#unit_rate').val(unit_rate);
          });         
            calcAmount();
          })
          .fail(function(){
              alert("non");
          });

    });
});
</script>
@endpush