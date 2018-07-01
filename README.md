# sailfish-os-patch-jolla-email-readability

Patch for Sailfish OS Jolla-Email App:

Improves readability of emails on display of phones / in sunlight.

This patch removes the white background and displays text of plain-text emails white on the blurred background of the active Ambience.
The HTML view is additionally being adjusted to override unnecessary custom styles, and to use a sans-serif font. Custom decorative CSS styles (borders, shadows, etc.) found in emails are being overriden to not be used.

Distributed on an “AS IS” BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied:
Use on your own risk: As with any patch, creating a backup of your system before applying is recommended.
