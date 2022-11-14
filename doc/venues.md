# This is the documentation for the venue model
## Attributes
- name
- user (Venue belongs to a user)
- images (Venue images implemented with active storage)
- Description
- Country
- City 
- State
- Street
- Status (Status of the venue)
- Address (A method called which will generate the full address)

## Access control
- All users can see the venue details
- Only the user assigned to the venue can update and edit the venue
- No one is allowed to delete the venues

## To do 

- [] Complete the pundit access
- [] Work on the model tests
