class c_661_1;
    integer i = -109;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_661_1;
    c_661_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xx01xzx1xzzz00x110x00100000x11x0zzxzxzzxzxxxzzxxxxxxzxxxzzzzxxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
