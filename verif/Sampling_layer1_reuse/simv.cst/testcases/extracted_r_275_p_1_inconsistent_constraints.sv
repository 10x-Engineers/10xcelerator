class c_275_1;
    integer i = -44;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_275_1;
    c_275_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1zzxxz1z100xzx1xzzz1xx1zx1x0z10xzxzzzxzxzxxzzzxxxzxzxxzxxzxzxzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
