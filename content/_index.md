---
title: "Hidden Roast Society"
date: 2025-10-03
draft: false
---

# Hidden Roast Society

## Small Batch Coffee. Roasted for Members Only.

We're not trying to change the world. Just make better mornings for a few people.

---

### What This Is

A coffee club for people who care about what's in their cup. Every roast is small batch. Every bag is different. Every member gets coffee roasted fresh and shipped the next day.

### What This Isn't

- Mass produced
- Available in stores
- For everyone

---

## Membership, Not Transactions

You don't buy coffee from us. You join us. We ❤️ you with coffee.

<div class="membership-tiers">

<div class="tier">

### Society Member
**$50 / month** — Founder's Rate (locked for life)

- 2 bags monthly (~13.5 oz each)
- Shipping included
- Tasting notes & roaster's diary
- Add-on bag: $22

<small>Public rate after Founders: $70/mo</small>

<button class="join-button" onclick="joinSocietyMember()" id="join-society">Join Now</button>
<div class="membership-full" id="full-society" style="display:none;">
  <p>Membership Full - <a href="#waitlist">Join Waitlist</a></p>
</div>

</div>

<div class="tier featured">

### Inner Circle
**$75 / month** — Founder's Rate (locked for life)

- 3 bags monthly (~13.5 oz each)
- Shipping included
- Quarterly 2–4 oz sample
- Add-on bag: $22

<small>Public rate after Founders: $95/mo</small>

<button class="join-button" onclick="joinInnerCircle()" id="join-inner">Join Now</button>
<div class="membership-full" id="full-inner" style="display:none;">
  <p>Membership Full - <a href="#waitlist">Join Waitlist</a></p>
</div>

</div>

</div>

---

## The Rules

- Founder's Rate capped at 40 members total
- New members only when someone leaves
- Shipping is always included
- Coffee is always shipped fresh
- Roasts happen once a month
- Each bag starts as 1 lb green coffee—you get the honest roasted weight (typically 13 – 14.5 oz)

---

## Our Promise

- All bags ship immediately following the roast
- Forever small batch—we'll never scale beyond what we can roast with care
- Constantly evolving—new origins, new roast profiles, always experimenting
- Each bag numbered and dated
- Each member known by name, not as a transaction

---

## What We Believe

**We believe:**
- Coffee should be roasted this week, not last month
- Small batches mean we can actually care about each one
- The ritual matters as much as the caffeine
- Good coffee and fair prices aren't mutually exclusive

**We don't believe:**
- Bigger is better
- In scaling up and watering down quality
- Coffee should taste the same every single time (where's the fun in that?)
- You should settle for stale beans because they're "convenient"

---

## FAQ

**Q: Why only 50 members?**  
A: Because 51 would be too many.

**Q: Can I buy without membership?**  
A: No.

**Q: Is there a waiting list?**  
A: Always.

**Q: Do you do custom roasts?**  
A: For Inner Circle only.

**Q: Can I give as a gift?**  
A: Memberships can be transferred once per year.

**Q: How do I manage my subscription?**  
A: [Manage your subscription here](/manage.html) - update payment, view invoices, or cancel.

---

## Join the Waitlist
<a id="waitlist"></a>

Join the list. We'll let you know when a seat opens.  
No spam. No marketing. Just a simple notice.

<form action="/subscription/form" method="post" class="waitlist-form">
  <input type="email" name="email" placeholder="your@email.com" required>
  <input type="hidden" name="nonce" value="">
  <input type="hidden" name="l" value="5cd3d6d1-65ea-4c27-be75-fed09ae8a312">
  <button type="submit">Request Invitation</button>
</form>

---

<footer class="site-footer">

**Contact**  
Email: membership@hiddenroast.club  
Instagram: @hiddenroastsociety

**Legal**  
Lost River Valley, WV  
Hidden Roast Society Est. 2025

</footer>

<style>
:root {
  --font-sans: -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, Helvetica, Arial, sans-serif;
  --font-serif: 'Georgia', serif;
  --color-text: #222;
  --color-background: #fdfdfd;
  --color-border: #e0e0e0;
  --color-primary: #1a1a1a;
  --color-light-gray: #888;
}

* {
  margin: 0;
  padding: 0;
  box-sizing: border-box;
}

body {
  font-family: var(--font-sans);
  line-height: 1.7;
  color: var(--color-text);
  background-color: var(--color-background);
  max-width: 700px;
  margin: 0 auto;
  padding: 4rem 2rem;
}

h1, h2, h3 {
  font-family: var(--font-serif);
}

h1 {
  font-size: 2.8rem;
  text-align: center;
  margin-bottom: 0.5rem;
}

h2 {
  font-size: 1.4rem;
  font-weight: normal;
  text-align: center;
  color: var(--color-light-gray);
  margin-bottom: 4rem;
}

h3 {
  font-size: 1.2rem;
  margin-top: 3rem;
  margin-bottom: 1rem;
}

hr {
  border: none;
  border-top: 1px solid var(--color-border);
  margin: 4rem 0;
}

ul, ol {
  padding-left: 1.5rem;
}

li {
  margin-bottom: 0.5rem;
}

a {
  color: var(--color-primary);
  text-decoration: none;
  border-bottom: 1px solid var(--color-primary);
  transition: background-color 0.2s, color 0.2s;
}

a:hover {
  background-color: var(--color-primary);
  color: var(--color-background);
}

/* Membership Tiers */
.membership-tiers {
  display: grid;
  grid-template-columns: 1fr 1fr;
  gap: 2rem;
  margin: 3rem 0;
}

.tier {
  border: 1px solid var(--color-border);
  padding: 2rem;
  border-radius: 8px;
}

.tier h3 {
  margin-top: 0;
  font-size: 1.3rem;
}

.tier ul {
  list-style: none;
  padding: 0;
}

.tier li {
  padding: 0.5rem 0;
  border-bottom: 1px solid var(--color-border);
}

.tier li:last-child {
  border-bottom: none;
}

/* Waitlist Form */
.waitlist-form {
  display: flex;
  gap: 0.5rem;
  margin: 2rem 0;
}

.waitlist-form input[type="email"] {
  flex-grow: 1;
  padding: 0.8rem 1rem;
  font-size: 1rem;
  border: 1px solid var(--color-border);
  border-radius: 4px;
  font-family: var(--font-sans);
}

.waitlist-form button {
  padding: 0.8rem 1.5rem;
  font-size: 1rem;
  background-color: var(--color-primary);
  color: var(--color-background);
  border: none;
  border-radius: 4px;
  cursor: pointer;
  transition: opacity 0.2s;
}

.waitlist-form button:hover {
  opacity: 0.8;
}

/* Footer */
.site-footer {
  margin-top: 5rem;
  padding-top: 2rem;
  border-top: 1px solid var(--color-border);
  text-align: center;
  font-size: 0.9rem;
  color: var(--color-light-gray);
}

/* Responsive */
@media (max-width: 600px) {
  body {
    padding: 2rem 1rem;
  }

  h1 {
    font-size: 2.2rem;
  }

  .membership-tiers {
    grid-template-columns: 1fr;
  }
}

/* Join Button */
.join-button {
  width: 100%;
  padding: 0.8rem 1.5rem;
  margin-top: 1rem;
  font-size: 1rem;
  background-color: var(--color-primary);
  color: var(--color-background);
  border: none;
  border-radius: 4px;
  cursor: pointer;
  transition: opacity 0.2s;
  font-family: var(--font-sans);
}

.join-button:hover {
  opacity: 0.8;
}

.membership-full {
  margin-top: 1rem;
  padding: 1rem;
  background-color: #f5f5f5;
  border-radius: 4px;
  text-align: center;
}

.membership-full p {
  margin: 0;
  color: var(--color-light-gray);
}

.membership-full a {
  color: var(--color-primary);
  text-decoration: none;
  border-bottom: 1px solid var(--color-primary);
}
</style>

<script>
const PRICE_IDS = {
  society_member: 'price_1SEyop7MFwf9QPLIP12nYIVO',
  inner_circle: 'price_1SEyoP7MFwf9QPLIuj444yRu'
};

// Check member status on page load
async function checkMemberStatus() {
  try {
    const response = await fetch('/stripe/member-status');
    const data = await response.json();
    
    if (!data.acceptingMembers) {
      // Hide join buttons, show full message
      document.getElementById('join-society').style.display = 'none';
      document.getElementById('join-inner').style.display = 'none';
      document.getElementById('full-society').style.display = 'block';
      document.getElementById('full-inner').style.display = 'block';
    }
    
    // Update the rules text with current count
    const rulesSection = document.querySelector('#the-rules');
    if (rulesSection && data.spotsAvailable > 0) {
      console.log(`${data.spotsAvailable} Founder's Rate spots remaining`);
    }
  } catch (error) {
    console.error('Error checking member status:', error);
    // On error, show buttons (fail open)
  }
}

// Run on page load
checkMemberStatus();

async function checkout(tier) {
  try {
    const response = await fetch('/stripe/create-checkout-session', {
      method: 'POST',
      headers: { 'Content-Type': 'application/json' },
      body: JSON.stringify({
        priceId: PRICE_IDS[tier],
        successUrl: window.location.origin + '/success?session_id={CHECKOUT_SESSION_ID}',
        cancelUrl: window.location.origin + '/',
        metadata: {
          tier: tier,
          source: 'website'
        }
      })
    });

    const { url } = await response.json();
    window.location.href = url;
  } catch (error) {
    console.error('Error:', error);
    alert('Something went wrong. Please try again.');
  }
}

function joinSocietyMember() {
  checkout('society_member');
}

function joinInnerCircle() {
  checkout('inner_circle');
}
</script>
