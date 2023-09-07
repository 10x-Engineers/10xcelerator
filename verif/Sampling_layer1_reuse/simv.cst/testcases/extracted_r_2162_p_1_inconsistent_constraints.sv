class c_2162_1;
    integer i = -359;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2162_1;
    c_2162_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xxxx11xz011zx1xxxzx11z0z10zz11xzzxzxxzzxxxxzxzzxzzzzzxxxxxxxxxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
