[#ftl output_format="HTML"] <!DOCTYPE html>
    <html lang="en">
      <head>
        <meta charset="UTF-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    
        <title>SMS_OTP_Form</title>
        <link
          rel="stylesheet"
          href="https://cdn.jsdelivr.net/npm/tailwindcss@2.2/dist/tailwind.min.css"
          type="text/css"
        />
      </head>
    
      <body>
        <div class="md:h-screen bg-white relative flex flex-col justify-center items-center">
          <div
            class="md:border md:border-gray-300 bg-white md:shadow-lg shadow-none rounded p-10 align-middle"
          >
            <div class="flex flex-col items-center space-y-3">
              <div class="flex">
                <img src="https://gluu.org/wp-content/uploads/2020/12/logo.png" />
              </div>
              <span class="text-2xl font-semi-bold leading-normal">SMS OTP Form</span>
              <p class="leading-normal">Enter the code we've sent through SMS</p>
            </div>
            <form method="post" class="mt-8" onsubmit="return handleFormValidation()">
              <div id="otp" class="flex flex-row justify-center text-center px-2 mt-5">
                <input
                  class="m-2 border h-10 w-10 text-center form-control rounded"
                  type="text"
                  id="first"
                  name="first"
                  maxlength="1"
                />
                <input
                  class="m-2 border h-10 w-10 text-center form-control rounded"
                  type="text"
                  id="second"
                  name="second"
                  maxlength="1"
                />
                <input
                  class="m-2 border h-10 w-10 text-center form-control rounded"
                  type="text"
                  id="third"
                  name="third"
                  maxlength="1"
                />
                <input
                  class="m-2 border h-10 w-10 text-center form-control rounded"
                  type="text"
                  id="fourth"
                  name="fourth"
                  maxlength="1"
                />
                <input
                  class="m-2 border h-10 w-10 text-center form-control rounded"
                  type="text"
                  id="fifth"
                  name="fifth"
                  maxlength="1"
                />
                <input
                  class="m-2 border h-10 w-10 text-center form-control rounded"
                  type="text"
                  id="sixth"
                  name="sixth"
                  maxlength="1"
                />
              </div>
              <div class="space-y-9 mt-4">
                <div class="text-sm flex justify-center items-center">
                  <button
                    type="submit"
                    class="py-2 px-6 rounded text-white btn bg-green-500 hover:bg-green-600"
                  >
                    Submit
                  </button>
                </div>
              </div>
            </form>
          </div>
        </div>
      </body>
    </html>
    
    <script>
      function handleFormValidation() {
        var first = document.getElementById('first').value
        if (first === '') {
          alert('Code is required')
          return false
        }
    
        var second = document.getElementById('second').value
        if (second === '') {
          alert('Code is required')
          return false
        }
    
        var third = document.getElementById('third').value
        if (third === '') {
          alert('Code is required')
          return false
        }
    
        var fourth = document.getElementById('fourth').value
        if (fourth === '') {
          alert('Code is required')
          return false
        }
    
        var fifth = document.getElementById('fifth').value
        if (fifth === '') {
          alert('Code is required')
          return false
        }
    
        var sixth = document.getElementById('sixth').value
        if (sixth === '') {
          alert('Code is required')
          return false
        }
        return true
      }
    </script>
    