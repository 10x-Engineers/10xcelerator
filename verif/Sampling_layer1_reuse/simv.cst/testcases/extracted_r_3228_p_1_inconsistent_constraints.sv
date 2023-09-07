class c_3228_1;
    integer i = -536;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_3228_1;
    c_3228_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xx0x0z0zxzxx1zx1z100zz1001x00zzxzxzxzxxxxxxxxxxxzxxxzzxxxxzxzxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram