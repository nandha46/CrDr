@include('v1.Includes.Header')
@include('v1.Includes.Leftmenu')

<div class='page-wrapper'>
	@include('v1.Includes.TopMenu')

	<div class='page-content'>
		<div class='container-fluid'>

			@include('v1.Includes.PageTitleBox')
			<div class="mi-form-area-container">
			<div class='mi-btn-holder'>
				<button class='button-49' onclick="addStudentsCSV()">Students</button>
				<button class='button-49' onclick="addTeachersCSV()">Teachers</button>
				<button class='button-49' onclick="addLessonsCSV()">Lessons</button>
			</div>
			</div>
		</div>
	</div>
</div>

@include('v1.Includes.Footer')