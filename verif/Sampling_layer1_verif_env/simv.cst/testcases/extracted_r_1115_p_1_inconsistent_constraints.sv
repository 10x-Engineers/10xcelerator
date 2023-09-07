class c_1115_1;
    integer i = -184;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1115_1;
    c_1115_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1z1z0zx100zzxzzzz0z1z000x11z0xxzzxzxzzxzzxxxxxxzxxzzxxxzzxzzzxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
