class c_406_1;
    integer i = -66;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_406_1;
    c_406_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xz111xzxx00x11z0zx000z01x000xz1zxzxxzxzxxzzzzxzxzxzxzzzxxzxzzxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
