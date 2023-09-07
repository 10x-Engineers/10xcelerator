class c_2534_1;
    integer i = -421;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2534_1;
    c_2534_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zxx00xzx010z10xxx1110001xx0zx11xzxxxzxxxxxzzzxxzzzzzxzxzxzxzxzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
