<?php foreach ($categories as $category): ?>

<?php $childCategories = $category['children']; ?>


@if(count($childCategories) > 0)
    <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle"
           href="{{ route ('category.view', $category['object']->slug)}}"
           title="{{ $category['object']->name }}">
            {{ $category['object']->name }} {!! (count($childCategories) > 0) ? '<span class="caret"></span>' : '' !!}
        </a>
       
        <div class="dropdown-menu" aria-labelledby="dropdown01">
            @foreach($childCategories as $Child)
              <a class="dropdown-item" href="#">Action</a>
              <a class="dropdown-item" href="#">Another action</a>
              <a class="dropdown-item" href="#">Something else here</a>
              @endforeach
        </div>
@else

    <li class="nav-item">
        <a class="nav-link"
           href="{{ route ('category.view', $category['object']->slug)}}"
           title="{{ $category['object']->name }}">
            {{ $category['object']->name }} {!! (count($childCategories) > 0) ? '<span class="caret"></span>' : '' !!}
        </a>
        @endif


    <?php while (true): ?>

    <?php if ($category['object'] == NULL): ?>
                <?php break ?>
            <?php endif; ?>

    <?php
    $slug = $category['object']->slug;
    $name = $category['object']->name;
    $category['object'] = NULL;
    ?>
    <?php if (count($childCategories) > 0): ?>
    <ul class="dropdown-menu">
        @include('layouts.category-tree',['categories' => $childCategories])
    </ul>
    <?php endif; ?>
    <?php endwhile; ?>
</li>
<?php endforeach; ?>