<div class="panel">
    <div class="panel-body">
        <h6>See tailored products for your need.</h6>
        <hr/>
        <?php $count = count($properties); ?>
        @for ($i = 0; $i < $count; $i++)
        <h6>{{ $properties[$i]['name'] }}</h6>
        <ul class="list-group">
              @for($j=0; $j < 3; $j++)
                  <li class="list-group-item">
                      <input id="variation-{{ $properties[$i]['options'][$j]['id'] }}"
                             type="checkbox"

                             class="category-variation-checkbox"
                             value="{{ $properties[$i]['options'][$j]['id'] }}" data-parent="{{$properties[$i]['id']}}">
                      <label for="variation-{{ $properties[$i]['options'][$j]['id'] }}">
                          {{ $properties[$i]['options'][$j]['text'] }}
                      </label>
                  </li>
              @endfor

          </ul>
          @endfor
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

<script type="text/javascript" src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
<script>
    jQuery(document).ready(function () {
        jQuery(document).on('change', '.category-variation-checkbox', function (e) {
            e.preventDefault();
            //alert('hi');
            // AJAX START - for getting SO IDS
            // AJAX START - for getting SO IDS
            var text = '{ "checkedboxes" : [';
            var checkedboxes = $('.category-variation-checkbox:checkbox:checked');
            
            var count = checkedboxes.length;
            checkedboxes.each(function(index,element){
              var ele = $(element);
              text += '{ "id":"'+ele.val()+'" , "propid":"'+ele.attr('data-parent')+'" }';
              if(index != count-1){
                text += ',';
              }
            });
            text += ']}';
            var obj = JSON.parse(text);
            var CSRF_TOKEN = $('meta[name="csrf-token"]').attr('content');
           $.ajax({
              url: '{{url("/test")}}',
              type: 'POST',
              data: {_token: CSRF_TOKEN, obj},
              dataType: 'JSON',
              success: function (data) {
                  console.log('hi');
              }
          });

    });
});
</script>
@endpush