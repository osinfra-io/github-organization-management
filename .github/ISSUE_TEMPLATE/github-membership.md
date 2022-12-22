---
name: GitHub Membership
about: Service interface for adding new members to the organization
title: GitHub membership request
labels: enhancement
assignees: ''

---

body:
- type: input
    id: contact
    attributes:
      label: Contact Details
      description: How can we get in touch with you if we need more info?
      placeholder: ex. email@example.com
    validations:
      required: true
