class c_634_1;
    integer i = -104;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_634_1;
    c_634_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z0z110zz10z0z0zx10xxzzz0xzzx001xzzzxzxxxzxzzzxzzxzzxzzzxzzxzxxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
