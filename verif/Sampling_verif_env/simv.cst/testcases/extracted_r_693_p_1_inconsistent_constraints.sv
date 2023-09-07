class c_693_1;
    integer i = 693;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_693_1;
    c_693_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zz0zxzzz000z01x0zzzx010z1100xz0xxzzzzzxzxxxxxxxzxxxzxzzzxzxzzzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
