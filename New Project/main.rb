prop_template = 
"
        private string m_sEmployeeOriginator;

        /// <summary>
        /// Сотрудник, сформировавший сообщение
        /// </summary>        
        [RSavedProperty(\"H20MSOR\", \"p_sMSOR\")]
        public string EmployeeOriginator
        {
            get
            {
                CheckLoad();
                if (m_sEmployeeOriginator == null)
                {
                    m_sEmployeeOriginator = string.Empty;
                }
                return m_sEmployeeOriginator;
            }
            set
            {
                m_sEmployeeOriginator = value;
            }
        }
"

prop_arr = [
    ["S","PropertyName", "N90PROP", "p_sPROP", "Comment", true]
]

def create_prop_desc_inner(pa)
    return {
        :type       => pa[0],
        :name       => pa[1],
        :loadName   => pa[2],
        :savedName  => pa[3],
        :comm       => pa[4],
        :raise      => pa[5].nil? ? false : pa[5],
        :mod        => pa[6].nil? ? :public : pa[6]
    }
end

def create_property(prop_desc)
    
end

puts create_prop_desc_inner(prop_arr[0])

