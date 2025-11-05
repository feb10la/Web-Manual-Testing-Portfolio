### DEFECT REPORT: High Severity

**Title:** [High]No Error Message Displayed When Adding Product Fails Due to Network/Server Issue <br>
**Severity:** High <br>
**Status:** Open <br>
**Component/Module:** Inventory Page / Add to Cart Functionality <br>
**Environment:** Chrome Version 141.0.7390.77 (64-bit) <br>

---
#### 1. Steps to Reproduce (STR):
1.  Navigate to the Inventory Page (as logged-in user).
2.  Simulate a network disconnection or server error (e.g., using Chrome DevTools/Network tab to block requests or simulate offline mode).
3.  Click the "Add to cart" button on any product (e.g., Sauce Labs Backpack).

#### 2. Expected Result:
The system should display a clear, user-friendly error message (e.g., "Gagal menambahkan produk ke keranjang" atau "Network connection lost. Please try again.") and the product should not appear in the cart.

#### 3. Actual Result:
The system fails to display any error message, and the product is not added to the cart. The application remains static, providing no feedback to the user regarding the failure.

#### Attachment:
![Video Bug Filter](Defect_Reports/Defect_Reports_Video_Bug_Add_To_Cart_Network_Error.gif)
