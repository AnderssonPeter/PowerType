using System.Collections.Generic;
using System.Text;
using System.Threading.Tasks;

namespace PowerType.Model
{

    public class PowerTypeDictionary
    {
        public PowerTypeDictionary()
        {

        }

        public List<string> Keys { get; set; } = null!;
        public Platforms Platforms { get; set; }
        public string Name { get; set; } = null!;
        public string Description { get; set; } = string.Empty;
        public List<Parameter> Parameters { get; set; } = null!;

        internal void Initialize(ISystemTime systemTime)
        {
            if (Parameters != null)
            {
                foreach (var parameter in Parameters)
                {
                    parameter.Initialize(systemTime);
                }
            }
        }

        internal void Validate()
        {
            if (Keys == null || Keys.Count == 0)
            {
                throw new ArgumentNullException(nameof(Keys));
            }

            if (Platforms == 0)
            {
                throw new ArgumentNullException(nameof(Platforms));
            }

            if (string.IsNullOrEmpty(Name))
            {
                throw new ArgumentNullException(nameof(Name));
            }
            if (Parameters == null || Parameters.Count == 0)
            {
                throw new ArgumentNullException(nameof(Parameters));
            }

            foreach (var parameter in Parameters)
            {
                parameter.Validate();
            }
        }
    }
}
