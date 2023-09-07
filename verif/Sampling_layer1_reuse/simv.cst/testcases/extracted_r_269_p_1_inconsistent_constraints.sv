class c_269_1;
    integer i = -43;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_269_1;
    c_269_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "01x10xx1zxx1101xzz11xz11zz0x0x01zzxzxzxxzxzxxzxzzxzzzxzxzxzxzzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
