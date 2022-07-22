# Inspector Gadget

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

## TODO

### UI

- [ ] Read-only nodes
- [ ] Create nodes
- [ ] Create comments
- [ ] Icons
- [ ] Typed nodes: devices / peripherals / system / kernel / ...

### Checkbox integration

- [ ] Spec
- [ ] Associate test plans

### Data flow

```mermaid
graph TD;
    style QA fill:green,stroke:#333,stroke-width:4px
    style qa-hw-spec-review fill:#00a,stroke:#333,stroke-width:4px
    style search-hw fill:#00a,stroke:#333,stroke-width:4px
    style present-hw fill:#00a,stroke:#333,stroke-width:4px
    QA-->checkbox
    checkbox["Checkbox (test + some hardware info)"]-->submission-json["Submission JSON"]-->gadgets-model["Device info model"];
    inxi["inxi (more system and hardware info)"]-->inxi-json["inxi JSON"]-->gadgets-model;
    other-source[system info tool X...]-->other-a-serialization["serialization format X"]-->gadgets-model;
    gadgets-model-->gadgets-cli["Gadgets CLI"]
    QA-->qa-hw-spec-review
    qa-hw-spec-review("Spec review")-->gadgets-ui
    gadgets-model-->gadgets-ui["Gadgets UI"]
    gadgets-ui-->gadgets-json
    gadgets-cli-->gadgets-json["Gadgets JSON"]
    gadgets-json-->c3["certification.canonical.com (C3)"];
    gadgets-json-->gadgets-web["Gadgets web (embedded component)"];
    gadgets-web-->ubuntu-website["ubuntu.com/certified/[device ID ('CID')]"]
    c3-->search-hw
    ubuntu-website-->search-hw["Find devices by components"]
    ubuntu-website-->present-hw["Present test details for certified hardware spec"]
```

### Backend

- [ ] lshw
