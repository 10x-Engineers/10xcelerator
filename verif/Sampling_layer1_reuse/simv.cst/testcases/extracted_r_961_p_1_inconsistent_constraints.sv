class c_961_1;
    integer i = -159;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_961_1;
    c_961_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z1zz0xxx00x00z110x11z1xx11zx111xxxxzxxzzxzxzzxxxzxxxzzxzxzxxxzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
