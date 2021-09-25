class Dictionary

  def top
    top_line = {
                'abehkloruvz'=> 'O.',
                'cdfgmnpqxy' => 'OO',
                'ijstw'      => '.O'
                }
  end

  def middle
    middle_line = {
                   'ackmx'   => '..',
                   'nfilpsv' => 'O.',
                   'denoyz'  => '.O',
                   'ghjqrtw' => 'OO'
                   }
  end

  def bottom
    bottom_line = {
                   'abcdefghij'  => '..',
                   'klmnopqrrst' => 'O.',
                   'uvxyz'       => 'OO',
                   'w'           => '.O'
                   }
  end
end
