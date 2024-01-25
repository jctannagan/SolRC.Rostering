using FluentValidation;
using Microsoft.Extensions.DependencyInjection;

namespace SolRc.Rostering.Application;

public static class DependencyInjection
{
    public static IServiceCollection AddApplication(this IServiceCollection services)
    {
        var assemblyInfo = typeof(DependencyInjection).Assembly;
        services.AddMediatR(config => 
            config.RegisterServicesFromAssembly(assemblyInfo));
        services.AddValidatorsFromAssembly(assemblyInfo);

        return services;
    }
}