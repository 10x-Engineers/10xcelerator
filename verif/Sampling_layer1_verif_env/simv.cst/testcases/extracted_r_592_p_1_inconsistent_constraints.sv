class c_592_1;
    integer i = -97;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_592_1;
    c_592_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "001xz10xxx000x1x1xz0z1000x01x0z0xxxxzzxxzxzzzxzxxxxxxzxzxxxzzxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
