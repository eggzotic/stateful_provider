# stateful_provider

A demo Flutter project. This simple app demonstrates how StatefulWidget can
access & listen to state from Provider just as StatelessWidget can (in addition
to it's regular use of internal state & setState).

## Why?

I prefer to use StatelessWidget by default - but some scenarios require
StatefulWidget - such as anything using TextFormField, and custom Animations.

Using StatefulWidget for truly localized non-app-state purposes may be
preferable to storing such state in global/app-state (as I've done many-a-time)

## Getting Started

To see this an action:

```flutter run -d chrome```
