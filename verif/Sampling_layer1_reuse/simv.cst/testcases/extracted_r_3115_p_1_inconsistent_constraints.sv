class c_3115_1;
    integer i = -518;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_3115_1;
    c_3115_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xxx1xxzxzzz0x1xzz1x0xz01zz0zx11zzzxzzxxzzxzzxxzzxxzzzxxxxzzxzzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
