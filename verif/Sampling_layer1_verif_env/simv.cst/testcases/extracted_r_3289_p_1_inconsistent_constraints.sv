class c_3289_1;
    integer i = -547;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_3289_1;
    c_3289_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zx0z10xzx1xx10z0xz0xzxz101xxx011xxzzxzzzzzxzzzzzzzxxzzxzzxxxxxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
