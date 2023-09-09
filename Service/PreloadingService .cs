using ClassLibraryDAL;

public class PreloadingService : IPreloadingService
{
    public async Task PreloadDataAsync()
    {
        // Load essential data here
        await Task.Run(() =>
        {
            DALPassingDegree.GetPassingDegrees();
            DALPassingDSGroups.GetPassingDSGroups();
            DalCities.GetCities();
        });
    }
}
