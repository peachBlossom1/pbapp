@extends('layouts.app')

@section('meta_title')
    'Hire A Proffesional'
@endsection

@section('content')
    <div class="row">        
        <div class="col-md-8 order-md-1">
          <h4 class="mb-3">Tell us your needs and we'll send the right man for the job.</h4>
          <form class="needs-validation" novalidate>
            <div class="row">
              <div class="col-md-6 mb-3">
                <label for="firstName">First name</label>
                <input type="text" class="form-control" id="firstName" placeholder="" value="" required>
                <div class="invalid-feedback">
                  Valid first name is required.
                </div>
              </div>
              <div class="col-md-6 mb-3">
                <label for="lastName">Last name</label>
                <input type="text" class="form-control" id="lastName" placeholder="" value="" required>
                <div class="invalid-feedback">
                  Valid last name is required.
                </div>
              </div>
            </div>

            <div class="mb-3">
              <label for="email">Email <span class="text-muted">(Optional)</span></label>
              <input type="email" class="form-control" id="email" placeholder="you@example.com">
              <div class="invalid-feedback">
                Please enter a valid email address for shipping updates.
              </div>
            </div>

            <div class="mb-3">
              <label for="address">Address</label>
              <input type="text" class="form-control" id="address" placeholder="1234 Main St" required>
              <div class="invalid-feedback">
                Please enter your shipping address.
              </div>
            </div>

            <div class="mb-3">
              <label for="address2">Address 2 <span class="text-muted">(Optional)</span></label>
              <input type="text" class="form-control" id="address2" placeholder="Apartment or suite">
            </div>

            <div class="row">
              <div class="col-md-4 mb-3">
                <label for="state">State</label>
                <select class="custom-select d-block w-100" id="state" required>
                  <option value="">Choose...</option>
                  <option>Sindh</option>
                  <option>Punjab</option>
                  <option>Balochistan</option>
                  <option>KPK</option>
                </select>
                <div class="invalid-feedback">
                  Please provide a valid state.
                </div>
              </div>
              <div class="col-md-3 mb-3">
                <label for="zip">Zip</label>
                <input type="text" class="form-control" id="zip" placeholder="" required>
                <div class="invalid-feedback">
                  Zip code required.
                </div>
              </div>
            </div>
            <hr class="mb-4">
            <div class="row">
              <div class="col-md-6 mb-12">
                <label for="state">Services</label>
                <select class="custom-select d-block w-100" id="state" multiple="">
                  <option>Pest Control</option>
                  <option>Diagnostics</option>
                  <option>Gardening Chores</option>
                  <option>Desgining</option>
                  <option>Garden Maintenance</option>
                  <option>Garden Clearance</option>
                  <option>Lawn Care</option>
                  <option>Tree Surgery</option>
                </select>
              </div>
            </div>
            <hr class="mb-4">
            <hr class="mb-4">
            <div class="row">
              <div class="col-md-6 mb-12">
                <label for="state">Prefered Date  </label>
                <input type="date" class="form-control" id="zip" name="">
              </div>
            </div>
            <hr class="mb-4">
            <a href="{{ url('proffesionalhire/booked') }}" class="btn btn-primary btn-lg btn-block" type="submit">Book Apointment</a>
          </form>
        </div>

    </div>
@endsection
