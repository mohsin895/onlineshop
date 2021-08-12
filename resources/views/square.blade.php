<!--
  Copyright 2018 Square Inc.
  Licensed under the Apache License, Version 2.0 (the "License");
  you may not use this file except in compliance with the License.
  You may obtain a copy of the License at
      http://www.apache.org/licenses/LICENSE-2.0
  Unless required by applicable law or agreed to in writing, software
  distributed under the License is distributed on an "AS IS" BASIS,
  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
  See the License for the specific language governing permissions and
  limitations under the License.
-->
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
    <meta name="csrf-token" content="{{ csrf_token() }}">
    <!-- link to the SqPaymentForm library -->
<script type="text/javascript" src="https://js.squareupsandbox.com/v2/paymentform">
</script>

<!-- link to the local custom styles for SqPaymentForm -->
<link rel="stylesheet" type="text/css" href="{{asset('frontend/css/mysqpaymentform.css')}}">

  </head>
  <body>
    <div id="form-container">
  <div id="sq-card-number"></div>
  <div class="third" id="sq-expiration-date"></div>
  <div class="third" id="sq-cvv"></div>
  <div class="third" id="sq-postal-code"></div>
  <button id="sq-creditcard" class="button-credit-card" onclick="onGetCardNonce(event)">Pay $1.00</button>
</div> <!-- end #form-container -->
<!-- TODO: Add script from step 1.1.3 -->



<script type="text/javascript">

  //TODO: paste code from step 2.1.1
  const idempotency_key = uuidv4();


  // Create and initialize a payment form object
  const paymentForm = new SqPaymentForm({
    // Initialize the payment form elements

    //TODO: Replace with your sandbox application ID
    applicationId: "sandbox-sq0idb-jd4ZIhXqOkBdIOwaN57hCA",
    inputClass: 'sq-input',
    autoBuild: false,
    // Customize the CSS for SqPaymentForm iframe elements
    inputStyles: [{
        fontSize: '16px',
        lineHeight: '24px',
        padding: '16px',
        placeholderColor: '#a0a0a0',
        backgroundColor: 'transparent',
    }],
    // Initialize the credit card placeholders
    cardNumber: {
        elementId: 'sq-card-number',
        placeholder: 'Card Number'
    },
    cvv: {
        elementId: 'sq-cvv',
        placeholder: 'CVV'
    },
    expirationDate: {
        elementId: 'sq-expiration-date',
        placeholder: 'MM/YY'
    },
    postalCode: {
        elementId: 'sq-postal-code',
        placeholder: 'Postal'
    },
    // SqPaymentForm callback functions
    callbacks: {
        /*
        * callback function: cardNonceResponseReceived
        * Triggered when: SqPaymentForm completes a card nonce request
        */
        cardNonceResponseReceived: function (errors, nonce, cardData) {
          $.ajaxSetup({
            headers: {
              'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
            }
          });
        if (errors) {
            // Log errors from nonce generation to the browser developer console.
            console.error('Encountered errors:');
            errors.forEach(function (error) {
                console.error('  ' + error.message);
            });
            alert('Encountered errors, check browser developer console for more details');
             return;
        }
        //TODO: Replace alert with code in step 2.1
        fetch('process-payment', {
  method: 'POST',
  headers: {
    'Accept': 'application/json',
    'Content-Type': 'application/json'
  },
  body: JSON.stringify({
    nonce: nonce,
    idempotency_key: idempotency_key,
    location_id: "LXN5VR2CYH00E"
  })
})
.catch(err => {
  alert('Network error: ' + err);
})
.then(response => {
  if (!response.ok) {
    return response.json().then(
      errorInfo => Promise.reject(errorInfo));
  }
  return response.json();
})
.then(data => {
  console.log(data);
  alert('Payment complete successfully!\nCheck browser developer console for more details');
})
.catch(err => {
  console.error(err);
  alert('Payment failed to complete!\nCheck browser developer console for more details');
});

        alert(`The generated nonce is:\n${nonce}`);
     }
   }
 });
 //TODO: paste code from step 1.1.4
 //TODO: paste code from step 1.1.5
 paymentForm.build();

//TODO: paste code from step 2.1.2
//Generate a random UUID as an idempotency key for the payment request
// length of idempotency_key should be less than 45
function uuidv4() {
   return 'xxxxxxxx-xxxx-4xxx-yxxx-xxxxxxxxxxxx'.replace(/[xy]/g, function(c) {
     var r = Math.random() * 16 | 0, v = c == 'x' ? r : (r & 0x3 | 0x8);
     return v.toString(16);
   });
}



// onGetCardNonce is triggered when the "Pay $1.00" button is clicked
function onGetCardNonce(event) {

  // Don't submit the form until SqPaymentForm returns with a nonce
  event.preventDefault();
  // Request a nonce from the SqPaymentForm object
  paymentForm.requestCardNonce();
}

</script>
<script type="text/javascript">
/*
  Copyright 2019 Square Inc.
  Licensed under the Apache License, Version 2.0 (the "License");
  you may not use this file except in compliance with the License.
  You may obtain a copy of the License at
      http://www.apache.org/licenses/LICENSE-2.0
  Unless required by applicable law or agreed to in writing, software
  distributed under the License is distributed on an "AS IS" BASIS,
  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
  See the License for the specific language governing permissions and
  limitations under the License.
*/
const express = require('express');
const bodyParser = require('body-parser');
const { Client, Environment, ApiError } = require('square');

const app = express();
const port = 3000;

// Set the Access Token which is used to authorize to a merchant
const accessToken = 'EAAAEGnAPPjeAXb0ERgXi7T9And3IlhASzYXWdro8LiMETejdg-8woFJTDVTaskq';

app.use(bodyParser.json());
app.use(bodyParser.urlencoded({ extended: false }));
app.use(express.static(__dirname));

// Initialized the Square api client:
//   Set sandbox environment for testing purpose
//   Set access token
const client = new Client({
  environment: Environment.Sandbox,
  accessToken: accessToken,
});

app.post('/process-payment', async (req, res) => {
  const requestParams = req.body;

  // Charge the customer's card
  const paymentsApi = client.paymentsApi;
  const requestBody = {
    sourceId: requestParams.nonce,
    amountMoney: {
      amount: 100, // $1.00 charge
      currency: 'USD'
    },
    locationId: requestParams.location_id,
    idempotencyKey: requestParams.idempotency_key,
  };

  try {
    const response = await paymentsApi.createPayment(requestBody);
    res.status(200).json({
      'title': 'Payment Successful',
      'result': response.result
    });
  } catch(error) {
    let errorResult = null;
    if (error instanceof ApiError) {
      errorResult = error.errors;
    } else {
      errorResult = error;
    }
    res.status(500).json({
      'title': 'Payment Failure',
      'result': errorResult
    });
  }
});

app.listen(
  port,
  () => console.log(`listening on - http://127.0.0.1:${port}`)
);
</script>

  </body>
</html>
