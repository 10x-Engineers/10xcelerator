class c_1776_1;
    integer i = -294;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1776_1;
    c_1776_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zzxzxxx1zzz1x1xzz00z0x0x0xzxx00xzxzxzzzxxxzxxzzzxxxxzzxxxxzxxxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
