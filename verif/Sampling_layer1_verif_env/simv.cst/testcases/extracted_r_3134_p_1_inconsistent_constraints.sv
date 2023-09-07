class c_3134_1;
    integer i = -521;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_3134_1;
    c_3134_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "01z01xx0zzz11z00zz00110zz11z1z01xzzxxxzzzzxxxzxxxzxxzzzzxxzxzzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
