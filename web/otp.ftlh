[#ftl output_format="HTML"]
        <!DOCTYPE html>
          <html lang="en">
          <head>
          
          
          
          <style>* { box-sizing: border-box; } body {margin: 0;}*{box-sizing:border-box;margin-top:0px;margin-right:0px;margin-bottom:0px;margin-left:0px;padding-top:0px;padding-right:0px;padding-bottom:0px;padding-left:0px;font-family:"Open Sans", sans-serif;}body{margin-top:0px;margin-right:0px;margin-bottom:0px;margin-left:0px;}.input:focus + .label, .input:active + .label, .input.filled + .label{font-size:0.75rem;transition-duration:0.2s;transition-timing-function:ease-out;transition-delay:0s;transition-property:all;top:-0.9rem;background-color:rgb(255, 255, 255);color:rgb(26, 115, 232);padding-top:0px;padding-right:5px;padding-bottom:0px;padding-left:5px;margin-top:0px;margin-right:5px;margin-bottom:0px;margin-left:5px;}</style>
          
          </head>
          <body><meta charset="UTF-8"/><meta http-equiv="X-UA-Compatible" content="IE=edge"/><meta name="viewport" content="width=device-width, initial-scale=1.0"/><title>Auth_App_OTP_Form
  </title><link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/tailwindcss@2.2/dist/tailwind.min.css" type="text/css"/><div class="md:h-screen bg-white relative flex flex-col justify-center items-center"><div class="md:border md:border-gray-300 bg-white md:shadow-lg shadow-none rounded p-10 align-middle"><div class="flex flex-col items-center space-y-3"><div class="flex"><img src="https://gluu.org/wp-content/uploads/2020/12/logo.png"/></div><span class="text-2xl font-semi-bold leading-normal">Authenticator OTP Form</span><p class="leading-normal">Enter the code from Authenticator App
		</p></div><form method="post" class="mt-8"><div id="otp" class="flex flex-row justify-center text-center px-2 mt-5"><input type="text" name="first" id="first" maxlength="1" class="m-2 border h-10 w-10 text-center form-control rounded"/><input type="text" name="second" id="second" maxlength="1" class="m-2 border h-10 w-10 text-center form-control rounded"/><input type="text" name="third" id="third" maxlength="1" class="m-2 border h-10 w-10 text-center form-control rounded"/><input type="text" name="fourth" id="fourth" maxlength="1" class="m-2 border h-10 w-10 text-center form-control rounded"/></div><div class="space-y-9 mt-4"><div class="text-sm flex justify-center items-center"><button type="submit" class="py-2 px-6 rounded text-white btn bg-green-500 hover:bg-green-600">
			  Submit
			</button></div></div></form></div></div></body>
          </html>