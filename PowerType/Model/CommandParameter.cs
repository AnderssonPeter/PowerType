using System.Collections.Generic;

namespace PowerType.Model
{
    public class CommandParameter : Parameter
    {
        public List<Parameter> Parameters { get; set; } = new List<Parameter>();

        internal override void Initialize(IExecutionContext executionContext)
        {            
            base.Initialize(executionContext);
            foreach(var parameter in Parameters)
            {
                parameter.Initialize(executionContext);
            }
        }

        protected override void Validate()
        {
            base.Validate();
            if (Parameters == null || Parameters.Count == 0)
            {
                throw new ArgumentNullException(nameof(Parameters));
            }
        }
    }
}
