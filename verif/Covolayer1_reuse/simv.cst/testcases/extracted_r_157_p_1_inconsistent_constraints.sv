class c_157_1;
    integer i = -155;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_157_1;
    c_157_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "010z1z1z001xxz0zx1xz1z011x101001xxxxxzxzzzzzxzxxzzzzzzxxzxzxxxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
