class c_248_1;
    integer i = -246;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_248_1;
    c_248_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z0xxxz00x1z0x1zx01zz1x01x00z001xxzzzxzzzxzzzxxxxzzxzxxxzxzxzzxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
