// Copyright (c) Microsoft Corporation.
// Licensed under the MIT license.
import { CLICommand } from "@microsoft/teamsfx-api";
import { envAddCommand } from "./envAdd";
import { envListCommand } from "./envList";
import { envResetCommand } from "./envReset";

export const envCommand: CLICommand = {
  name: "env",
  description: "Manage environments.",
  commands: [envAddCommand, envListCommand, envResetCommand],
};
