class c_386_1;
    integer i = -63;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_386_1;
    c_386_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0x101zxx1xzz00x1zzzxx100zzz1z100xzzzxxxxzzzzxxzzzzzzxzxzxxxxzxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
