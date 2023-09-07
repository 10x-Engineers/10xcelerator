class c_3284_1;
    integer i = -546;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_3284_1;
    c_3284_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xz001xz1xzxz110x110010xzzzxxx111zxzzxxxxxxxzxzxzzzzzzzzzxzzxxxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
