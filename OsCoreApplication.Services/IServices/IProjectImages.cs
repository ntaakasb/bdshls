﻿using OsCoreApplication.DataLayer.EFModel;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace OsCoreApplication.Services
{
    public interface IProjectImages
    {
        List<ProjectImage> GetListProjectImage(long ProjectID);
        bool DeleteProjectImage(long id);
        bool AddProjectImage(ProjectImage projectImage);
    }
}
