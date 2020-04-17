import places from 'places.js';

const initAutocomplete = () => {
  const addressInput = document.getElementById('location_place');
  if (addressInput) {
    places({ container: addressInput });
  }
};

export { initAutocomplete };
