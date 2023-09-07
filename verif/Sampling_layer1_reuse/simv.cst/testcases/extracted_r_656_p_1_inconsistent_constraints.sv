class c_656_1;
    integer i = -108;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_656_1;
    c_656_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xx1z000zxx0z0xz1x1z10xzz00101zxxxxxxxxxzzzxzxzzzzxzxzzzzxxxxxzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
