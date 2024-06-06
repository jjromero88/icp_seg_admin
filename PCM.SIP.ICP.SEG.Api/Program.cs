using PCM.SIP.ICP.SEG.Api.Modules.Authentication;
using PCM.SIP.ICP.SEG.Api.Modules.Feature;
using PCM.SIP.ICP.SEG.Api.Modules.Injection;
using PCM.SIP.ICP.SEG.Api.Modules.Mapper;
using PCM.SIP.ICP.SEG.Api.Modules.Swagger;
using PCM.SIP.ICP.SEG.Api.Modules.Validator;
using PCM.SIP.ICP.SEG.Persistence;
using PCM.SIP.ICP.SEG.Infraestructure;
using PCM.SIP.ICP.SEG.Aplicacion.Features;
using PCM.SIP.ICP.SEG.Api.Modules.Redis;
using PCM.SIP.ICP.SEG.Api.Filters;

var builder = WebApplication.CreateBuilder(args);
var configuration = builder.Configuration;

// Add services to the container.
builder.Services.AddHttpClient();
builder.Services.AddMapper();
builder.Services.AddControllers();
builder.Services.AddFeature(configuration);
builder.Services.AddPersistenceServices();
builder.Services.AddInfraestructureServices();
builder.Services.AddApplicationServices();
builder.Services.AddInjection(configuration);
builder.Services.AddAuthentication(configuration);
builder.Services.AddValidator();
builder.Services.AddSwagger();
builder.Services.AddRedisCache(builder.Configuration);

// Se registra el ActionFilterAttribute en el Contenedor de Dependencias
builder.Services.AddScoped<AuthorizationRequestAttribute>();

// Learn more about configuring Swagger/OpenAPI at https://aka.ms/aspnetcore/swashbuckle
builder.Services.AddEndpointsApiExplorer();
builder.Services.AddSwaggerGen();

var app = builder.Build();

// Configure the HTTP request pipeline.
if (app.Environment.IsDevelopment())
{
    app.UseDeveloperExceptionPage();
    app.UseSwagger();
    app.UseSwaggerUI(c => c.SwaggerEndpoint("/swagger/v1/swagger.json", "PIPOLFY.PERSONAL.API v1"));
}

app.UseHttpsRedirection();
app.UseRouting();

app.UseCors(x =>
{
    x.AllowAnyOrigin();
    x.AllowAnyHeader();
    x.AllowAnyMethod();
});

app.UseAuthentication();
app.UseAuthorization();

app.MapControllers();

app.Run();

public partial class Program { };
