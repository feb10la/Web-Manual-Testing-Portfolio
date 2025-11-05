### DEFECT REPORT: High Severity

**Title:** [High] Cart Validation Bypass: Able to Proceed to Checkout with Empty Cart <br>
**Severity:** High <br>
**Status:** Open <br>
**Component/Module:** Shopping Cart / Checkout Button <br>
**Environment:** Chrome Version 141.0.7390.77 (64-bit) <br>

---
#### 1. Steps to Reproduce (STR):
1.  Navigate to the Inventory Page (after login).
2.  Click the Shopping Cart icon (top right).
3.  Click the "Checkout" button without adding any items to the cart.

#### 2. Expected Result:
The system should display a clear error message (e.g., "Please add items to your cart before proceeding") and prevent navigation to the payment process.

#### 3. Actual Result:
The system bypasses the validation and proceeds directly to the "Checkout: Your Information" page, despite the cart being empty.

#### Attachment:
![Video Bug Filter](Defect_Reports_Video_Bug_Checkout_with_Empty_Cart.gif)
