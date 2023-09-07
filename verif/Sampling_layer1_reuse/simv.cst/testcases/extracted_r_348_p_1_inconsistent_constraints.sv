class c_348_1;
    integer i = -56;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_348_1;
    c_348_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1xxzz1z10xzz0xz00xz000zxx01010xxzzzzxxzxzzzxxxzxzzzzzxxzzzzzzzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
