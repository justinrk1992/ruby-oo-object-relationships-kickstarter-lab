class Backer

    attr_accessor :name

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def back_project(project)
        ProjectBacker.new(project, self)
    end

    def backed_projects
        y = ProjectBacker.all.select {|x| x.backer == self}
        y.collect {|u| u.project}
    end

end