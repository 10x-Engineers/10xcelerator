class c_1069_1;
    integer i = -177;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1069_1;
    c_1069_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "101zxxxzx10z011x1z100101x1zzzzxzxxzxzxzxxzxzzxxzzxzxxzxzzxzxxzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
