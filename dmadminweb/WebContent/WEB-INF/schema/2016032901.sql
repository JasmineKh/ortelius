-- Copyright (c) 2021 Linux Foundation
--
-- Licensed under the Apache License, Version 2.0 (the "License");
-- you may not use this file except in compliance with the License.
-- You may obtain a copy of the License at
--
--     http://www.apache.org/licenses/LICENSE-2.0
--
-- Unless required by applicable law or agreed to in writing, software
-- distributed under the License is distributed on an "AS IS" BASIS,
-- WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
-- See the License for the specific language governing permissions and
-- limitations under the License.

create table dm.dm_taskparams(
taskid integer,
pos integer,
label character varying(40),
variable character varying(40),
type character(10),
arrname character varying(40),
CONSTRAINT "taskparams-fk" FOREIGN KEY (taskid)
      REFERENCES dm_task (id) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION
);