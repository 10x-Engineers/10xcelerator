class c_2730_1;
    integer i = -453;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2730_1;
    c_2730_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zzxz01xz0100xxxz10z110x1z0z1zz00xzzzzzzzxxxzxxzzxzzxzzxxzzzzxzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
