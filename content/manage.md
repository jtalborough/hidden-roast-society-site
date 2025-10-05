---
title: "Manage Your Subscription"
date: 2025-10-03
draft: false
---

# Manage Your Subscription

Enter your email address to access your subscription management portal.

<div class="manage-form">
  <input type="email" id="email" placeholder="your@email.com" required>
  <button onclick="openPortal()">Access Portal</button>
  <p id="error-message" style="color: red; display: none;"></p>
  <p id="loading-message" style="display: none;">Loading...</p>
</div>

## What You Can Do

In the customer portal, you can:
- Update your payment method
- View your invoices and payment history
- Cancel your subscription
- Update billing information

---

[← Back to Home](/)

<style>
.manage-form {
  max-width: 400px;
  margin: 2rem auto;
  padding: 2rem;
  border: 1px solid var(--color-border);
  border-radius: 8px;
}

.manage-form input {
  width: 100%;
  padding: 0.8rem;
  margin-bottom: 1rem;
  font-size: 1rem;
  border: 1px solid var(--color-border);
  border-radius: 4px;
  font-family: var(--font-sans);
}

.manage-form button {
  width: 100%;
  padding: 0.8rem 1.5rem;
  font-size: 1rem;
  background-color: var(--color-primary);
  color: var(--color-background);
  border: none;
  border-radius: 4px;
  cursor: pointer;
  transition: opacity 0.2s;
  font-family: var(--font-sans);
}

.manage-form button:hover {
  opacity: 0.8;
}

.manage-form button:disabled {
  opacity: 0.5;
  cursor: not-allowed;
}
</style>

<script>
async function openPortal() {
  const email = document.getElementById('email').value;
  const errorMsg = document.getElementById('error-message');
  const loadingMsg = document.getElementById('loading-message');
  const button = document.querySelector('.manage-form button');
  
  if (!email) {
    errorMsg.textContent = 'Please enter your email address';
    errorMsg.style.display = 'block';
    return;
  }
  
  errorMsg.style.display = 'none';
  loadingMsg.style.display = 'block';
  button.disabled = true;
  
  try {
    // Get customer ID by email
    const customerResponse = await fetch('/stripe/get-customer-by-email', {
      method: 'POST',
      headers: { 'Content-Type': 'application/json' },
      body: JSON.stringify({ email: email })
    });
    
    if (!customerResponse.ok) {
      const error = await customerResponse.json();
      throw new Error(error.error || 'Customer not found');
    }
    
    const { customerId } = await customerResponse.json();
    
    // Create portal session
    const portalResponse = await fetch('/stripe/create-portal-session', {
      method: 'POST',
      headers: { 'Content-Type': 'application/json' },
      body: JSON.stringify({
        customerId: customerId,
        returnUrl: window.location.origin + '/manage'
      })
    });
    
    if (!portalResponse.ok) {
      throw new Error('Failed to create portal session');
    }
    
    const { url } = await portalResponse.json();
    window.location.href = url;
    
  } catch (error) {
    console.error('Error:', error);
    errorMsg.textContent = error.message || 'Something went wrong. Please try again.';
    errorMsg.style.display = 'block';
    loadingMsg.style.display = 'none';
    button.disabled = false;
  }
}

// Allow Enter key to submit
document.getElementById('email').addEventListener('keypress', function(e) {
  if (e.key === 'Enter') {
    openPortal();
  }
});
</script>
