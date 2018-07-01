Name: sailfishos-patch-jolla-email-readability
BuildArch: noarch
Summary: Improves Jolla-Email App: Better readability emails on display of phones / in sunlight.
Version: 0.1
Release: 1
Group: System/Patches
License: GPLv2
URL: https://github.com/kstenschke/sailfish-os-patch-jolla-email
Source0: %{name}-%{version}.tar.xz
Requires: patchmanager
Requires: sailfish-version >= 2.2.0

%description
Patch for Sailfish OS Jolla-Email App: Improves readability of emails on display of phones / in sunlight.
This patch removes the white background and displays text of plain-text emails white on the blurred background of the active Ambience.
The HTML view is additionally being adjusted to override unnecessary custom styles, and to use a sans-serif font. Custom decorative CSS styles (borders, shadows, etc.) found in emails are being overriden to not be used.

%prep
%setup -q -n %{name}-%{version}


%build

%install
rm -rf %{buildroot}

mkdir -p %{buildroot}/usr/share/patchmanager/patches/%{name}
cp -r patch/* %{buildroot}/usr/share/patchmanager/patches/%{name}

%pre
if [ -d /var/lib/patchmanager/ausmt/patches/%{name} ]; then
/usr/sbin/patchmanager -u %{name} || true
fi

%preun
if [ -d /var/lib/patchmanager/ausmt/patches/%{name} ]; then
/usr/sbin/patchmanager -u %{name} || true
fi

%files
%defattr(-,root,root,-)
%{_datadir}/patchmanager/patches/%{name}
