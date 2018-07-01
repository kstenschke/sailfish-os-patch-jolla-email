Name: sailfishos-patch-jolla-email-readability
BuildArch: noarch
Summary: Improves Jolla-Email App: Better readability of plaintext- and HTML-email views on display of phones and in light surroundings.
Version: 0.1
Release: 1
Group: System/Patches
License: GPLv2
URL: https://github.com/kstenschke/sailfish-os-patch-jolla-email
Source0: %{name}-%{version}.tar.xz
Requires: patchmanager
Requires: sailfish-version >= 2.1.3

%description
%{summary}

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
