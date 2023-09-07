class c_2154_1;
    integer i = -357;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2154_1;
    c_2154_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0z11zzx1xzz1110z1zzz1xxzxzz0z011xzxzxzzzxxxxzxxzxzzzxxxxzzzzxzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
