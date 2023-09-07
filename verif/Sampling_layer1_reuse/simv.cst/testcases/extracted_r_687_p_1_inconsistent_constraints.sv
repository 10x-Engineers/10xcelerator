class c_687_1;
    integer i = -113;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_687_1;
    c_687_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xxz00x0x1xz0x1xz1101100xz0x1xz11zzzzzxxxxzzzzxzzxxxzzxzxzzzzxxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
