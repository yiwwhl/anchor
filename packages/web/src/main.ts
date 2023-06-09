import { createApp } from "vue";
import App from "./App";
import { ImageAutoLoader } from "./plugins/ImageAutoLoader";

const app = createApp(App);
app.use(ImageAutoLoader("anchor_asstes_images"));
app.mount("#app");
