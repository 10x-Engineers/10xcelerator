class c_75_1;
    integer i = -11;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_75_1;
    c_75_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "01x011x001x0z1zxz1xz1xxxzz00011zzzxxzxxxzzxxzzxzzzxxzxzzxzxxxxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
